/*
 * Copyright (C)2020 Glen Neville
 *
 * GRSTAPS is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published
 * by the Free Software Foundation; either version 3 of the License,
 * or any later version.
 *
 * GRSTAPS is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
 * License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GRSTAPS; if not, write to the Free Software Foundation,
 * Inc., #59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#ifndef GRSTAPS_TASKALLOCATION_H
#define GRSTAPS_TASKALLOCATION_H

#include <vector>
#include <string>
#include <iostream>
#include "grstaps/Scheduling/Scheduler.h"
#include <iomanip>      // std::setw
#include <boost/shared_ptr.hpp>
#include <grstaps/unordered_map/robin_hood.h>

using std::vector;

namespace grstaps {

    /**
     * Task Allocation
     *
     * \todo Get scheduling working
     * \todo There is a speed memory tade off in distribution
     *
     */
    class TaskAllocation {
    public:
        /**
        * default constructor
        *
        */
        TaskAllocation();

        /**
        * constructor
        *
        *\param a vector containing the goaltrait distribution
        *\param a vector containing the species trait distribution
        *\param a vector containing initial allocation
        */
        TaskAllocation(vector<vector<float>>*, vector<vector<float>>*, vector<short>, vector<vector<float>>*,  boost::shared_ptr<vector<int>> =boost::shared_ptr<vector<int>>(NULL), vector<std::string>* =NULL);

        /**
        * constructor
        *
        *\param a vector containing the goaltrait distribution
        *\param a vector containing the species trait distribution
        */
        TaskAllocation(vector<vector<float>>*, vector<vector<float>>*, vector<vector<float>>*, boost::shared_ptr<vector<int>> =boost::shared_ptr<vector<int>>(NULL), vector<std::string>* =NULL);

        /**
        * Copy constructor
        *
        * \return a deep copy of the passed object
        *
        */
        TaskAllocation(TaskAllocation&);


           /**
        * Adds an action to the task allocators job
        *
        * \param the requirements of the new action
        * \param the cutoff values for all noncumulative traits
        *
        * \return bool is this node a goal
        *
        */
        void addAction(const vector<float>&, const vector<float>&, const std::string);

        /**
        * runs the scheduler on this allocation and returns the time to schedule
        *
         * \param type of schedule you want sufficing or optimal
         *
        * \return bool is this node a goal
        *
        */
        float getScheduleTime(int);

        /**
        * Is this node a goal node
        *
        * \return bool is this node a goal
        *
        */
        bool isGoalAllocation();

        /**
        * does the check to see if the node is a goal
        *
        * \return bool is this node a goal
        *
        */
        bool checkGoalAllocation();

        /**
        * fixes the Allocation Trait Distribution
        *
        * \return bool is this node a goal
        *
        */
        void updateAllocationTraitDistribution();

        /**
        * adds an agent to a task
        *
        * \param agent index of agent type to add to task
        * \param task index of task to add agent too
        *
        */
        bool addAgent(int, int);

        /**
        * updates the allocation trait distribution
        *
        * \param agent index of agent type to add to task
        * \param task index of task to add agent too
        *
        */
        void updateAllocationTraitDistributionAgent(int , int );

        /**
        * getter for Allocation
        *
        * \param returns the allocation as a vector<vector<float>>
        *
        */
        vector<short> getAllocation();

        /**
        * getter for  getGoalTraitDistribution
        *
        * \param returns the  getGoalTraitDistribution as a vector<vector<float>>
        *
        */
        vector<vector<float>>* getGoalTraitDistribution();

        /**
        * getter for getAllocationTraitDistribution
        *
        * \param returns the getAllocationTraitDistribution as a vector<vector<float>>
        *
        */
        vector<vector<float>> getAllocationTraitDistribution();

        /**
        * getter for getSpeciesTraitDistribution
        *
        * \param returns the getSpeciesTraitDistribution as a vector<vector<float>>
        *
        */
        vector<vector<float>>* getSpeciesTraitDistribution();

        /**
        * getter for actionNoncumulativeTraitValue
        *
        * \param returns the actionNoncumulativeTraitValue as a vector<vector<float>>
        *
        */
        vector<vector<float>>* getActionNoncumulativeTraitValue();

        /**
        * setter for Allocation
        *
        *
        */
        void setAllocation(vector<short>);

        /**
        * setter for GoalTraitDistribution
        *
        *
        */
        void setGoalTraitDistribution(vector<vector<float>>*);

        /**
        * setter for peciesTraitDistribution
        *
        *
        */
        void setSpeciesTraitDistribution(vector<vector<float>>*);

        /**
        * setter for ActionNoncumulativeTraitValue
        *
        *
        */
        void setActionNoncumulativeTraitValue(vector<vector<float>>*);


        /**
        * setter for SpeciesNames
        *
         * vector of strings that is the names
        *
        */
        void setSpeciesNames(vector<std::string>);

        /**
        * setter for ActionNames
        *
         * vector of strings that is the names
        *
        */
        void setActionNames(vector<std::string>);


        /**
        * setter for Number of each species
        *
         * vector of ints that is the counts
        *
        */
        void setNumSpecies(boost::shared_ptr<vector<int>>);

        /**
        * getter for SpeciesNames
        *
        *
        */
        robin_hood::unordered_map<std::string, int >* getSpeciesNames();

        /**
        * getter for ActionNames
        *
        *
        */
        vector<std::string>* getActionIDs();

        /**
        * setter for ActionNames
        *
        *\param the naes for the action ID
         *
        */
        void setActionIDs(vector<std::string>*);


        /**
        * getter for Number of each species
        *
        *
        */
        boost::shared_ptr<vector<int>> getNumSpecies();

        /**
        * getter for task allocation ID
        *
        *
        */
        std::string getID();

        /**
        * getter for goal distance
        *
        *
        */
        float getGoalDistance();

        /**
        * getter for numSpecies
        *
        *
        */
        boost::shared_ptr<vector<int>> getnumSpecies();

        /**
        * shows the size of a task allocation object broken down by its parts
        *
        *
        */
        void checkSize();

        /**
        * Adds an action to the task allocators job
        *
        * \param the new goalTraitDistribution
        * \param the cutoff values for all noncumulative traits
        * \param the new set of action IDS
        * \param the new amount to add to the goal distance
        *
        */
        void addAction(vector<vector<float>>*, vector<vector<float>>*, float, vector<std::string>* =NULL);


    private:
        boost::shared_ptr<int> scheduleType{};
        vector<vector<float>>* speciesTraitDistribution{};
        Scheduler* scheduler{};
        boost::shared_ptr<vector<int>> numSpecies{};

        vector<vector<float>>* actionNoncumulativeTraitValue{};
        vector<std::string>* actionIDs{};
        vector<vector<float>>* goalTraitDistribution{};

        float scheduleTime{};
        float goalDistance{};
        bool isGoal{};

        vector<short> allocation;

    };

}

//#include "../src/Task_Allocation/TaskAllocation.cpp"
#endif //UNTITLED_TASKALLOCATION_H
